.class Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;
.super Ljava/lang/Object;
.source "OpPreventModeCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/plugin/OpPreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketSensorListener"
.end annotation


# instance fields
.field protected mCurrentResult:I

.field final synthetic this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;


# direct methods
.method private constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->mCurrentResult:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishWithResult: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->mCurrentResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->mCurrentResult:I

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$500(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$700(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$600()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    iget-object v0, v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    iget v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->mCurrentResult:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$700(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    iput p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->mCurrentResult:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$300(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-nez v1, :cond_0

    const-string p1, "OpPreventModeCtrl"

    const-string v1, "Event has no values!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->finishWithResult(I)V

    goto :goto_2

    :cond_0
    const-string v1, "OpPreventModeCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v3}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$400(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-direct {p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->finishWithResult(I)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetState()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->mCurrentResult:I

    return-void
.end method
