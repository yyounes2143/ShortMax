.class public final synthetic Llf/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llf/r;

.field public final synthetic b:Lcom/ss/ttvideoengine/Resolution;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Llf/r;Lcom/ss/ttvideoengine/Resolution;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llf/p;->a:Llf/r;

    .line 5
    .line 6
    iput-object p2, p0, Llf/p;->b:Lcom/ss/ttvideoengine/Resolution;

    .line 7
    .line 8
    iput p3, p0, Llf/p;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Llf/p;->a:Llf/r;

    .line 2
    .line 3
    iget-object v1, p0, Llf/p;->b:Lcom/ss/ttvideoengine/Resolution;

    .line 4
    .line 5
    iget v2, p0, Llf/p;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Llf/r$a;->h(Llf/r;Lcom/ss/ttvideoengine/Resolution;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
