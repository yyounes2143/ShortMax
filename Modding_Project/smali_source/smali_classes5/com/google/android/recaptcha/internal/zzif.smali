.class final synthetic Lcom/google/android/recaptcha/internal/zzif;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzif;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzif;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzif;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzif;->zza:Lcom/google/android/recaptcha/internal/zzif;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 1
    const-string v4, "cs([Ljava/lang/Object;)Ljava/lang/Object;"

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const-class v2, Lcom/google/android/recaptcha/internal/zzih;

    .line 6
    .line 7
    const-string v3, "cs"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/recaptcha/internal/zzih;

    .line 2
    .line 3
    check-cast p2, [Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/recaptcha/internal/zzih;->cs([Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
