.class public final synthetic Lsu/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lna/b;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lna/b;ILjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsu/c;->a:Lna/b;

    .line 5
    .line 6
    iput p2, p0, Lsu/c;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lsu/c;->c:Ljava/lang/Exception;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lsu/c;->a:Lna/b;

    .line 2
    .line 3
    iget v1, p0, Lsu/c;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lsu/c;->c:Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lsu/d;->e(Lna/b;ILjava/lang/Exception;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
