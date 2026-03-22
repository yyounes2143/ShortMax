.class public final synthetic Lbf/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/play/core/review/a;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/play/core/review/a;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbf/f;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lbf/f;->b:Lcom/google/android/play/core/review/a;

    .line 7
    .line 8
    iput-object p3, p0, Lbf/f;->c:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p4, p0, Lbf/f;->d:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lbf/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lbf/f;->b:Lcom/google/android/play/core/review/a;

    .line 4
    .line 5
    iget-object v2, p0, Lbf/f;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lbf/f;->d:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lbf/n;->b(Ljava/lang/String;Lcom/google/android/play/core/review/a;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lcom/google/android/play/core/review/ReviewInfo;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
