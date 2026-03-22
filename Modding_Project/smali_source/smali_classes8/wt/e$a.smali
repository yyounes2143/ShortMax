.class public final Lwt/e$a;
.super Lkotlinx/serialization/encoding/b;
.source "TreeJsonEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwt/e;->P(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lwt/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lwt/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method constructor <init>(Lwt/e;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwt/e$a;->a:Lwt/e;

    .line 2
    .line 3
    iput-object p2, p0, Lwt/e$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lwt/e$a;->c:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 6
    .line 7
    invoke-direct {p0}, Lkotlinx/serialization/encoding/b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public encodeString(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwt/e$a;->a:Lwt/e;

    .line 7
    .line 8
    iget-object v1, p0, Lwt/e$a;->b:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Lkotlinx/serialization/json/t;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iget-object v4, p0, Lwt/e$a;->c:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 14
    .line 15
    invoke-direct {v2, p1, v3, v4}, Lkotlinx/serialization/json/t;-><init>(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lwt/e;->R(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getSerializersModule()Lxt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lwt/e$a;->a:Lwt/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwt/e;->a()Lkotlinx/serialization/json/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->getSerializersModule()Lxt/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
