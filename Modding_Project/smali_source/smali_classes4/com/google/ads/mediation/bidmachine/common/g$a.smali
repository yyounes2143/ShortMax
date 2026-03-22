.class Lcom/google/ads/mediation/bidmachine/common/g$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/bidmachine/common/g;-><init>(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/bidmachine/common/g;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/bidmachine/common/g;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/g$a;->a:Lcom/google/ads/mediation/bidmachine/common/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/google/ads/mediation/bidmachine/common/g$b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lcom/google/ads/mediation/bidmachine/common/g$b;-><init>(Lcom/google/ads/mediation/bidmachine/common/g$a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
