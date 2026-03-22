.class public final synthetic Lve/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lve/c;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lve/c;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lve/b;->a:Lve/c;

    .line 5
    .line 6
    iput-object p2, p0, Lve/b;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lve/b;->a:Lve/c;

    .line 2
    .line 3
    iget-object v1, p0, Lve/b;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lve/c;->b(Lve/c;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
