.class public final synthetic Lwb/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb/c;->a:Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/c;->a:Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->b(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
