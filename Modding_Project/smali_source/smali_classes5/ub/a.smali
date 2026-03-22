.class public final synthetic Lub/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/inmobi/media/G1;


# direct methods
.method public synthetic constructor <init>(ILcom/inmobi/media/G1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lub/a;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lub/a;->b:Lcom/inmobi/media/G1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lub/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lub/a;->b:Lcom/inmobi/media/G1;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/A;->b(ILcom/inmobi/media/G1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
