.class public final synthetic Lcom/moloco/sdk/internal/services/init/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/services/init/e;

.field public final synthetic b:Lcom/moloco/sdk/internal/services/i0;

.field public final synthetic c:Lcom/moloco/sdk/publisher/MediationInfo;

.field public final synthetic d:Lcom/moloco/sdk/internal/services/w;


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/services/init/e;Lcom/moloco/sdk/internal/services/i0;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/f;->a:Lcom/moloco/sdk/internal/services/init/e;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/f;->b:Lcom/moloco/sdk/internal/services/i0;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/init/f;->c:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/init/f;->d:Lcom/moloco/sdk/internal/services/w;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/f;->a:Lcom/moloco/sdk/internal/services/init/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/init/f;->b:Lcom/moloco/sdk/internal/services/i0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/init/f;->c:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/init/f;->d:Lcom/moloco/sdk/internal/services/w;

    .line 8
    .line 9
    check-cast p1, Lwr/g;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/moloco/sdk/internal/services/init/e;->c(Lcom/moloco/sdk/internal/services/init/e;Lcom/moloco/sdk/internal/services/i0;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/w;Lwr/g;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
