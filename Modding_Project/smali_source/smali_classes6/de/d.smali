.class public final synthetic Lde/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lfk/p;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lms/i;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lfk/p;Lkotlin/jvm/functions/Function0;Lms/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lde/d;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput-object p2, p0, Lde/d;->b:Lfk/p;

    .line 7
    .line 8
    iput-object p3, p0, Lde/d;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Lde/d;->d:Lms/i;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lde/d;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iget-object v1, p0, Lde/d;->b:Lfk/p;

    .line 4
    .line 5
    iget-object v2, p0, Lde/d;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v3, p0, Lde/d;->d:Lms/i;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->j(Lkotlin/jvm/internal/Ref$ObjectRef;Lfk/p;Lkotlin/jvm/functions/Function0;Lms/i;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
