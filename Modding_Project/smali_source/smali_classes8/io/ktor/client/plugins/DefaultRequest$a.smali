.class public final Lio/ktor/client/plugins/DefaultRequest$a;
.super Ljava/lang/Object;
.source "DefaultRequest.kt"

# interfaces
.implements Lwr/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/DefaultRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lwr/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/ktor/http/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lyr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lwr/g;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-direct {v1, v3, v4, v2}, Lwr/g;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lio/ktor/client/plugins/DefaultRequest$a;->a:Lwr/g;

    .line 15
    .line 16
    new-instance v1, Lio/ktor/http/h;

    .line 17
    .line 18
    const/16 v15, 0x1ff

    .line 19
    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v13, 0x0

    .line 30
    const/4 v14, 0x0

    .line 31
    move-object v5, v1

    .line 32
    invoke-direct/range {v5 .. v16}, Lio/ktor/http/h;-><init>(Lio/ktor/http/k;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/e;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lio/ktor/client/plugins/DefaultRequest$a;->b:Lio/ktor/http/h;

    .line 36
    .line 37
    invoke-static {v4}, Lyr/d;->a(Z)Lyr/b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lio/ktor/client/plugins/DefaultRequest$a;->c:Lyr/b;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public a()Lwr/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultRequest$a;->a:Lwr/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lyr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultRequest$a;->c:Lyr/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/ktor/http/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultRequest$a;->b:Lio/ktor/http/h;

    .line 2
    .line 3
    return-object v0
.end method
