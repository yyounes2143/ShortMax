.class public final synthetic Lce/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lce/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lce/h;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lce/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lce/h;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    check-cast p2, Ljava/util/List;

    .line 12
    .line 13
    check-cast p3, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1, p1, p2, p3}, Lce/j;->f(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/lang/String;)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
