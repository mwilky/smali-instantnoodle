.class Lcom/oneplus/systemui/util/OpMdmLogger$1;
.super Ljava/lang/Object;
.source "OpMdmLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$extraData:Ljava/util/HashMap;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$label:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$extraData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$label:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    const-string v2, "lock_unlock_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$100()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "finger_sensor_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$100()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$extraData:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v0, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
