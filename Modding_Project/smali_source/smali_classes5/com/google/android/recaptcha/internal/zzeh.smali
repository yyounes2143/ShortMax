.class final Lcom/google/android/recaptcha/internal/zzeh;
.super Lkotlin/jvm/internal/Lambda;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzeh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzeh;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzeh;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzeh;->zza:Lcom/google/android/recaptcha/internal/zzeh;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/recaptcha/internal/zzej;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzej;->zza()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
