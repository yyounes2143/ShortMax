.class Lio/bidmachine/protobuf/PostbannerType$1;
.super Ljava/lang/Object;
.source "PostbannerType.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/PostbannerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/i0$d<",
        "Lio/bidmachine/protobuf/PostbannerType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/i0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/PostbannerType$1;->findValueByNumber(I)Lio/bidmachine/protobuf/PostbannerType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/PostbannerType;
    .locals 0

    .line 2
    invoke-static {p1}, Lio/bidmachine/protobuf/PostbannerType;->forNumber(I)Lio/bidmachine/protobuf/PostbannerType;

    move-result-object p1

    return-object p1
.end method
