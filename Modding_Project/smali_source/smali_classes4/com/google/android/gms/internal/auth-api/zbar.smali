.class final synthetic Lcom/google/android/gms/internal/auth-api/zbar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zba:Lcom/google/android/gms/internal/auth-api/zbat;

.field private final synthetic zbb:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api/zbat;Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbar;->zba:Lcom/google/android/gms/internal/auth-api/zbat;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbar;->zbb:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbar;->zba:Lcom/google/android/gms/internal/auth-api/zbat;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zbar;->zbb:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbau;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/auth-api/zbat;->zbb(Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;Lcom/google/android/gms/internal/auth-api/zbau;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
