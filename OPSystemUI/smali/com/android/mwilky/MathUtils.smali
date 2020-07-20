.class public Lcom/android/mwilky/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 6
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 7
    return p1

    .line 8
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    .line 9
    return p2

    .line 11
    :cond_a
    return p0
.end method
