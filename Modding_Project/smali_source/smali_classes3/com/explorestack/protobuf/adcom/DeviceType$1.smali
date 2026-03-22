.class Lcom/explorestack/protobuf/adcom/DeviceType$1;
.super Ljava/lang/Object;
.source "DeviceType.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/DeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/i0$d<",
        "Lcom/explorestack/protobuf/adcom/DeviceType;",
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
.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/DeviceType;->forNumber(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/i0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/DeviceType$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object p1

    return-object p1
.end method
