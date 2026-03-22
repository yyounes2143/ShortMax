.class public final synthetic Lwt/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final synthetic b:Lkotlinx/serialization/json/a;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwt/c0;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    .line 6
    iput-object p2, p0, Lwt/c0;->b:Lkotlinx/serialization/json/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lwt/c0;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lwt/c0;->b:Lkotlinx/serialization/json/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lwt/d0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
