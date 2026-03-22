.class final Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeviceLoginManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/DeviceLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/facebook/login/DeviceLoginManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;->d:Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b()Lcom/facebook/login/DeviceLoginManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/login/DeviceLoginManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/login/DeviceLoginManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;->b()Lcom/facebook/login/DeviceLoginManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
