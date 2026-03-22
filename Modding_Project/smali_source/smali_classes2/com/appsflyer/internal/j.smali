.class public final synthetic Lcom/appsflyer/internal/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/appsflyer/internal/AFb1cSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFb1cSDK;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/j;->a:Lcom/appsflyer/internal/AFb1cSDK;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/j;->a:Lcom/appsflyer/internal/AFb1cSDK;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1cSDK;->a(Lcom/appsflyer/internal/AFb1cSDK;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
