.class public final Lhs/a$a;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhs/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhs/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lhs/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
