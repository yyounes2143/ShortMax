.class public Lcom/google/ads/mediation/pangle/PangleExtras$Builder;
.super Ljava/lang/Object;
.source "PangleExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/pangle/PangleExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private userData:Ljava/lang/String;


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
.method public build()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "user_data"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/PangleExtras$Builder;->userData:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public setUserData(Ljava/lang/String;)Lcom/google/ads/mediation/pangle/PangleExtras$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleExtras$Builder;->userData:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
