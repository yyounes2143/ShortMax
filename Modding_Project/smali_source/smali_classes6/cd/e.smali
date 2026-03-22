.class public final synthetic Lcd/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcd/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcd/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcd/e;->a:Lcd/f;

    .line 5
    .line 6
    iput-object p2, p0, Lcd/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcd/e;->c:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcd/e;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcd/e;->a:Lcd/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcd/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcd/e;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcd/e;->d:Z

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->b(Lcd/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Throwable;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
