.class public final Lr4/a$a;
.super Ljava/lang/Object;
.source "EndToEndDumper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lr4/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr4/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lr4/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr4/a$a;->a:Lr4/a$a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lr4/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
