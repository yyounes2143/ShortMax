.class public abstract Lcom/google/android/gms/internal/ads/zzgzd;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgzh<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzhat;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzgyw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyw;->zze()Lcom/google/android/gms/internal/ads/zzgyw;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzd;->zza:Lcom/google/android/gms/internal/ads/zzgyw;

    .line 9
    .line 10
    return-void
.end method
