.class Lio/bidmachine/z0$a;
.super Ljava/lang/Object;
.source "AppIdDataManager.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/z0;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/appset/AppSetIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/z0;


# direct methods
.method constructor <init>(Lio/bidmachine/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/z0$a;->a:Lio/bidmachine/z0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/z0$a;->a:Lio/bidmachine/z0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Lio/bidmachine/z0;->b(Lio/bidmachine/z0;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/z0$a;->a(Lcom/google/android/gms/appset/AppSetIdInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
