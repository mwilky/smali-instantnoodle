.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$vBPthjR7NidmH8Z1ezQtaPbYo-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$vBPthjR7NidmH8Z1ezQtaPbYo-s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$vBPthjR7NidmH8Z1ezQtaPbYo-s;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$vBPthjR7NidmH8Z1ezQtaPbYo-s;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$vBPthjR7NidmH8Z1ezQtaPbYo-s;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$vBPthjR7NidmH8Z1ezQtaPbYo-s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$4(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
