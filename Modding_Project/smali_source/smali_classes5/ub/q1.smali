.class public final synthetic Lub/q1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lcom/inmobi/media/Qa;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/inmobi/media/Qa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/q1;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Lub/q1;->b:Lcom/inmobi/media/Qa;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/q1;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iget-object v1, p0, Lub/q1;->b:Lcom/inmobi/media/Qa;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/inmobi/media/Qa;->a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/inmobi/media/Qa;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
