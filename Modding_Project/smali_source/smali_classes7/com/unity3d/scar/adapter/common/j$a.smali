.class Lcom/unity3d/scar/adapter/common/j$a;
.super Ljava/lang/Object;
.source "ScarAdapterBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/common/j;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/unity3d/scar/adapter/common/j;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/common/j;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/j$a;->b:Lcom/unity3d/scar/adapter/common/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/j$a;->a:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/j$a;->b:Lcom/unity3d/scar/adapter/common/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/unity3d/scar/adapter/common/j;->c:Lnl/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/scar/adapter/common/j$a;->a:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lnl/a;->a(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
