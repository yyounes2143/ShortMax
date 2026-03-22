.class public final synthetic Lub/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/B0;

.field public final synthetic b:B


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/B0;B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/b;->a:Lcom/inmobi/media/B0;

    .line 5
    .line 6
    iput-byte p2, p0, Lub/b;->b:B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/b;->a:Lcom/inmobi/media/B0;

    .line 2
    .line 3
    iget-byte v1, p0, Lub/b;->b:B

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/A0;->a(Lcom/inmobi/media/B0;B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
