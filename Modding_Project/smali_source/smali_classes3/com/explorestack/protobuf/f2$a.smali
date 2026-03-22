.class Lcom/explorestack/protobuf/f2$a;
.super Ljava/lang/Object;
.source "TypeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/explorestack/protobuf/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/f2;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/f2;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/explorestack/protobuf/f2$a;->a:Lcom/explorestack/protobuf/f2;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic a()Lcom/explorestack/protobuf/f2;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/f2$a;->a:Lcom/explorestack/protobuf/f2;

    .line 2
    .line 3
    return-object v0
.end method
