.class public final Lcom/google/android/gms/internal/ads/zzbot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzboq;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzboo;

.field private static final zzc:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbot;->zzc:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbos;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbos;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbot;->zza:Lcom/google/android/gms/internal/ads/zzboq;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbor;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbor;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbot;->zzb:Lcom/google/android/gms/internal/ads/zzboo;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic zza(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbot;->zzc:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
