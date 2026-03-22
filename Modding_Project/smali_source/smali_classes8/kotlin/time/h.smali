.class public final Lkotlin/time/h;
.super Ljava/lang/Object;
.source "TimeSource.kt"

# interfaces
.implements Let/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkotlin/time/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/time/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/time/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/time/h;->a:Lkotlin/time/h;

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
.method public bridge synthetic a()Lkotlin/time/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/time/h;->b()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    sget-object v0, Lkotlin/time/g;->a:Lkotlin/time/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/time/g;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/time/g;->a:Lkotlin/time/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/time/g;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
