.class public final Lwt/e$b;
.super Lkotlinx/serialization/encoding/b;
.source "TreeJsonEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwt/e;->Q(Ljava/lang/String;)Lwt/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lxt/a;

.field final synthetic b:Lwt/e;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwt/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwt/e$b;->b:Lwt/e;

    .line 2
    .line 3
    iput-object p2, p0, Lwt/e$b;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lkotlinx/serialization/encoding/b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lwt/e;->a()Lkotlinx/serialization/json/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->getSerializersModule()Lxt/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lwt/e$b;->a:Lxt/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwt/e$b;->b:Lwt/e;

    .line 7
    .line 8
    iget-object v1, p0, Lwt/e$b;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v8, Lkotlinx/serialization/json/t;

    .line 11
    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v2, v8

    .line 17
    move-object v3, p1

    .line 18
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/json/t;-><init>(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v8}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public encodeByte(B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lms/l;->b(B)B

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lms/l;->f(B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/e$b;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public encodeInt(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lms/n;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lwt/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/e$b;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public encodeLong(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lms/p;->b(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-static {p1, p2}, Lwt/g;->a(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/e$b;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public encodeShort(S)V
    .locals 0

    .line 1
    invoke-static {p1}, Lms/s;->b(S)S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lms/s;->f(S)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lwt/e$b;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getSerializersModule()Lxt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lwt/e$b;->a:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method
