.class Lpl/a$c;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/a;->f(Landroid/content/Context;Landroid/widget/RelativeLayout;Lnl/c;IILcom/unity3d/scar/adapter/common/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrl/c;

.field final synthetic b:Lpl/a;


# direct methods
.method constructor <init>(Lpl/a;Lrl/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lpl/a$c;->b:Lpl/a;

    .line 2
    .line 3
    iput-object p2, p0, Lpl/a$c;->a:Lrl/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpl/a$c;->a:Lrl/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lrl/a;->b(Lnl/b;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
