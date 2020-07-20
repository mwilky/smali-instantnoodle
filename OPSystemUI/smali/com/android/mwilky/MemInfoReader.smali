.class public Lcom/android/mwilky/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mCachedSize:J

.field private mFreeSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .line 44
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_3a

    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3a

    .line 45
    aget-byte v0, p1, p2

    const/16 v1, 0x30

    if-lt v0, v1, :cond_37

    aget-byte v0, p1, p2

    const/16 v2, 0x39

    if-gt v0, v2, :cond_37

    .line 46
    move v0, p2

    .line 47
    .local v0, "start":I
    add-int/lit8 p2, p2, 0x1

    .line 48
    :goto_18
    array-length v3, p1

    if-ge p2, v3, :cond_26

    aget-byte v3, p1, p2

    if-lt v3, v1, :cond_26

    aget-byte v3, p1, p2

    if-gt v3, v2, :cond_26

    .line 50
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 52
    :cond_26
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 53
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    return-wide v2

    .line 55
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :cond_37
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 57
    :cond_3a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private matchText([BILjava/lang/String;)Z
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 31
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, "N":I
    add-int v1, p2, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_b

    .line 33
    return v3

    .line 35
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1c

    .line 36
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_19

    .line 37
    return v3

    .line 35
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 40
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getCachedSize()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/android/mwilky/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .registers 3

    .line 103
    iget-wide v0, p0, Lcom/android/mwilky/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/android/mwilky/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .registers 9

    .line 64
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 66
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v1, 0x0

    :try_start_6
    iput-wide v1, p0, Lcom/android/mwilky/MemInfoReader;->mTotalSize:J

    .line 67
    iput-wide v1, p0, Lcom/android/mwilky/MemInfoReader;->mFreeSize:J

    .line 68
    iput-wide v1, p0, Lcom/android/mwilky/MemInfoReader;->mCachedSize:J

    .line 69
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/proc/meminfo"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "is":Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 71
    .local v2, "len":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 72
    iget-object v3, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    array-length v3, v3

    .line 73
    .local v3, "BUFLEN":I
    const/4 v4, 0x0

    .line 74
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v2, :cond_80

    const/4 v6, 0x3

    if-ge v4, v6, :cond_80

    .line 75
    iget-object v6, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    const-string v7, "MemTotal"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/mwilky/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 76
    add-int/lit8 v5, v5, 0x8

    .line 77
    iget-object v6, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v6, v5}, Lcom/android/mwilky/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mwilky/MemInfoReader;->mTotalSize:J

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 79
    :cond_3d
    iget-object v6, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    const-string v7, "MemFree"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/mwilky/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 80
    add-int/lit8 v5, v5, 0x7

    .line 81
    iget-object v6, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v6, v5}, Lcom/android/mwilky/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mwilky/MemInfoReader;->mFreeSize:J

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 83
    :cond_54
    iget-object v6, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    const-string v7, "Cached"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/mwilky/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 84
    add-int/lit8 v5, v5, 0x6

    .line 85
    iget-object v6, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v6, v5}, Lcom/android/mwilky/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mwilky/MemInfoReader;->mCachedSize:J

    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 88
    :cond_6a
    :goto_6a
    if-ge v5, v3, :cond_77

    iget-object v6, p0, Lcom/android/mwilky/MemInfoReader;->mBuffer:[B

    aget-byte v6, v6, v5
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_70} :catch_7f
    .catchall {:try_start_6 .. :try_end_70} :catchall_7a

    const/16 v7, 0xa

    if-eq v6, v7, :cond_77

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 74
    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 94
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local v2    # "len":I
    .end local v3    # "BUFLEN":I
    .end local v4    # "count":I
    .end local v5    # "i":I
    :catchall_7a
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 92
    :catch_7f
    move-exception v1

    .line 94
    :cond_80
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 95
    nop

    .line 96
    return-void
.end method
