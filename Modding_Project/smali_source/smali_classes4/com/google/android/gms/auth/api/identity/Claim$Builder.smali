.class public abstract Lcom/google/android/gms/auth/api/identity/Claim$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/Claim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/gms/auth/api/identity/Claim;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setEssential(Z)Lcom/google/android/gms/auth/api/identity/Claim$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/Claim$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
