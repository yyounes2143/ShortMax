.class public final synthetic Lvt/y2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lvt/z2;

.field public final synthetic b:Lst/c;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lvt/z2;Lst/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvt/y2;->a:Lvt/z2;

    .line 5
    .line 6
    iput-object p2, p0, Lvt/y2;->b:Lst/c;

    .line 7
    .line 8
    iput-object p3, p0, Lvt/y2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lvt/y2;->a:Lvt/z2;

    .line 2
    .line 3
    iget-object v1, p0, Lvt/y2;->b:Lst/c;

    .line 4
    .line 5
    iget-object v2, p0, Lvt/y2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lvt/z2;->c(Lvt/z2;Lst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
