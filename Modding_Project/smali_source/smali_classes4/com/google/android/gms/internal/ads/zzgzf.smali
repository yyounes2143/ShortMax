.class public final Lcom/google/android/gms/internal/ads/zzgzf;
.super Lcom/google/android/gms/internal/ads/zzgyp;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/ads/zzhas;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgyp<",
        "TContainingType;TType;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhas;Lcom/google/android/gms/internal/ads/zzgze;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzgze;->zzb:Lcom/google/android/gms/internal/ads/zzhck;

    .line 7
    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhck;->zzk:Lcom/google/android/gms/internal/ads/zzhck;

    .line 9
    .line 10
    if-ne p1, p2, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p2, "Null messageDefaultInstance"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    return-void

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "Null containingTypeDefaultInstance"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
