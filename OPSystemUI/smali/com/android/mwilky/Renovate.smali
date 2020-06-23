.class public Lcom/android/mwilky/Renovate;
.super Ljava/lang/Object;
.source "Renovate.java"


# static fields
.field public static mHideLockscreenClock:Z

.field public static mQsColumns:I

.field public static mQsRows:I

.field public static mQuickQsNumber:I

.field public static mScrambleKeypad:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHideLockscreenClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string v2, "tweaks_hide_lockscreen_clock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move v1, v3

    :cond_f
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mHideLockscreenClock:Z

    .line 30
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 17
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_rows"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 18
    const-string v1, "tweaks_qs_columns"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 19
    const-string v1, "tweaks_quick_qs_buttons"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsNumber:I

    .line 20
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 24
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string v2, "tweaks_scramble_pin"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move v1, v3

    :cond_f
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mScrambleKeypad:Z

    .line 25
    return-void
.end method
