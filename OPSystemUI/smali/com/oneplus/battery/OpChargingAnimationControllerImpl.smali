.class public Lcom/oneplus/battery/OpChargingAnimationControllerImpl;
.super Ljava/lang/Object;
.source "OpChargingAnimationControllerImpl.java"

# interfaces
.implements Lcom/oneplus/battery/OpChargingAnimationController;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;
    }
.end annotation


# static fields
.field private static mPreventModeNoBackground:Z = false


# instance fields
.field private TAG:Ljava/lang/String;

.field private isKeyguardShowing:Z

.field private mAnimationStarted:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBouncerShow:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationState:I

.field private mFastCharging:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardOn:Z

.field private mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

.field private mOldChargingType:I

.field private mOldPluggedInAndCharging:Z

.field private mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

.field private mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

.field private mPendingPlayWiredWarpCharing:Z

.field private mPendingPlayWirelessWarpCharing:Z

.field private mPluggedButNotUsb:Z

.field private mPreventViewShow:Z

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mSmallestWidth:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWarpFastCharging:Z

.field private mWirelessWarpCharging:Z

.field private mWrapChargingLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OpChargingAnimationControllerImpl"

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCurrentAnimationState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mFastCharging:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldPluggedInAndCharging:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldChargingType:I

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWirelessWarpCharing:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWiredWarpCharing:Z

    new-instance v1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    new-instance v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "OpChargingAnimationControllerImpl init"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->registerReceiver()V

    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;)V

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldChargingType:I

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldChargingType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/android/systemui/keyguard/ScreenLifecycle;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldPluggedInAndCharging:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldPluggedInAndCharging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return p0
.end method

.method static synthetic access$602(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->prepareAnimationResource()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->releaseAnimationResource()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$902(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p1
.end method

.method private genOpNewWarpChargingView()Lcom/oneplus/battery/OpNewWarpChargingView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOpNewWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpWirelessWarpChargingView != null / mOpWirelessWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_warp_charging_animation_view_new:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpNewWarpChargingView;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    return-object p0
.end method

.method private genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOpWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpWarpChargingView != null / mOpWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_warp_charging_animation_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpWarpChargingView;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    return-object p0
.end method

.method private initOPWarpCharging()V
    .locals 3

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->wrap_charging_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x138

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpWarpChargingView;->setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V

    :goto_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic lambda$animationEnd$1(ILcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationEnd(I)V

    return-void
.end method

.method static synthetic lambda$animationStart$0(ILcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationStart(I)V

    return-void
.end method

.method private prepareAnimationResource()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->prepareAsset()V

    :cond_0
    return-void
.end method

.method private releaseAnimationResource()V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateScrim()V
    .locals 3

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScrim, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x138

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, v2}, Lcom/oneplus/battery/OpWarpChargingView;->updaetScrimColor(I)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpWarpChargingView;->updateColors(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "can\'t updateScrim"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->addCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method

.method public animationEnd(I)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "animationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$5vtklR-Tu8EsuL7GG0Pgx7MKs0Q;

    invoke-direct {v2, p1}, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$5vtklR-Tu8EsuL7GG0Pgx7MKs0Q;-><init>(I)V

    invoke-static {v1, v2}, Lcom/oneplus/util/OpUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    sget-boolean p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    sput-boolean v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    :cond_0
    return-void
.end method

.method public animationStart(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "animationStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWiredWarpCharing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->onFastChargeChanged(I)V

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update pending wired warp charing status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWirelessWarpCharing:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update pending wireless warp charing status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->onWirelessWarpChargeChanged(Z)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWiredWarpCharing:Z

    iput-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWirelessWarpCharing:Z

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;

    invoke-direct {v1, p1}, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;-><init>(I)V

    invoke-static {p0, v1}, Lcom/oneplus/util/OpUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    sput-boolean v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    const/4 p1, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method

.method public init(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/16 v1, 0x138

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_FEATURE_WARP_CHARGING_ANIM support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v0, v3, [I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpNewWarpChargingView()Lcom/oneplus/battery/OpNewWarpChargingView;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->initOPWarpCharging()V

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    return p0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/battery/OpWarpChargingView;->onBatteryLevelChanged(IZZ)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/battery/OpNewWarpChargingView;->onBatteryLevelChanged(IZZ)V

    :cond_1
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged / newConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mSmallestWidth:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x138

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpNewWarpChargingView()Lcom/oneplus/battery/OpNewWarpChargingView;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->initOPWarpCharging()V

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mSmallestWidth:I

    :cond_1
    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFastChargeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWarpCharging(I)Z

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWiredWarpCharing:Z

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isAnimationStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->updateScrim()V

    new-array v1, v3, [I

    const/16 v2, 0x138

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->notifyWarpCharging()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0}, Lcom/oneplus/battery/OpWarpChargingView;->startAnimation()V

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isAnimationStarted()Z

    move-result p1

    if-nez p1, :cond_5

    iput-boolean v3, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWiredWarpCharing:Z

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq p1, v0, :cond_5

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onWirelessWarpChargeChanged(Z)V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWirelessWarpCharging "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWirelessWarpCharing:Z

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v0, v3

    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->updateScrim()V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->notifyWarpCharging()V

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isAnimationStarted()Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPendingPlayWirelessWarpCharing:Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->removeCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method
