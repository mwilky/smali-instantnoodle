.class public abstract Lcom/verizon/loginenginesvc/ILoginEngineService$Stub;
.super Landroid/os/Binder;
.source "ILoginEngineService.java"

# interfaces
.implements Lcom/verizon/loginenginesvc/ILoginEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginenginesvc/ILoginEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginenginesvc/ILoginEngineService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/verizon/loginenginesvc/ILoginEngineService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.verizon.loginenginesvc.ILoginEngineService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/verizon/loginenginesvc/ILoginEngineService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/verizon/loginenginesvc/ILoginEngineService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/verizon/loginenginesvc/ILoginEngineService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/verizon/loginenginesvc/ILoginEngineService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
