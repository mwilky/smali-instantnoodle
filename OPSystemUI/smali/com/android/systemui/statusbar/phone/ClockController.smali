.class public Lcom/android/systemui/statusbar/phone/ClockController;
.super Ljava/lang/Object;
.source "ClockController.java"


# instance fields
.field public mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mRightClock:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "id"

    const-string v1, "clock_center"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 17
    const-string v1, "clock"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 18
    const-string v1, "clock_right"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->updateActiveClock()V

    .line 21
    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/systemui/statusbar/policy/Clock;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method public updateActiveClock()V
    .registers 5

    .line 24
    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 25
    .local v0, "i":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 26
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 27
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_6a

    .line 30
    :cond_18
    if-ne v0, v1, :cond_2e

    .line 31
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 32
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 33
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_6a

    .line 35
    :cond_2e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_44

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_6a

    .line 40
    :cond_44
    const/4 v3, 0x3

    if-ne v0, v3, :cond_59

    .line 41
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 42
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_6a

    .line 46
    :cond_59
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 47
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 51
    :goto_6a
    return-void
.end method
