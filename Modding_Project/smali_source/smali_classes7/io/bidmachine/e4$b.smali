.class Lio/bidmachine/e4$b;
.super Ljava/lang/Object;
.source "InitialRequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/e4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/protobuf/InitResponse;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/bidmachine/protobuf/InitResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/e4$b;->a:Lio/bidmachine/protobuf/InitResponse;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/e4$b;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/protobuf/InitResponse;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/e4$b;->a:Lio/bidmachine/protobuf/InitResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/e4$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
