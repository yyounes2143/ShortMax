.class public final Lad-manager/b/c;
.super Lcom/hades/aar/admanager/core/AdFormat;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "ALL"

    .line 4
    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/hades/aar/admanager/core/AdFormat;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final formatName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "all"

    .line 2
    .line 3
    return-object v0
.end method
