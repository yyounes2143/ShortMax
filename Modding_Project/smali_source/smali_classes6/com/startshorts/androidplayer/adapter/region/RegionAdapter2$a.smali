.class public final Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;
.super Ljava/lang/Object;
.source "RegionAdapter2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/startshorts/androidplayer/bean/region/Region;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->d:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/region/Region;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/region/Region;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "firstCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->a:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->c:Lcom/startshorts/androidplayer/bean/region/Region;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/startshorts/androidplayer/bean/region/Region;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->c:Lcom/startshorts/androidplayer/bean/region/Region;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->a:I

    .line 2
    .line 3
    return v0
.end method
