.class public final Lio/bidmachine/analytics/internal/n0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/ReaderConfig;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/explorestack/protobuf/Struct;

.field private final d:Lio/bidmachine/analytics/internal/g0$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/ReaderConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Lio/bidmachine/analytics/internal/g0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n0$a;->a:Lio/bidmachine/analytics/ReaderConfig;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/internal/n0$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/analytics/internal/n0$a;->c:Lcom/explorestack/protobuf/Struct;

    .line 9
    .line 10
    iput-object p4, p0, Lio/bidmachine/analytics/internal/n0$a;->d:Lio/bidmachine/analytics/internal/g0$a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/g0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0$a;->d:Lio/bidmachine/analytics/internal/g0$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0$a;->c:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/bidmachine/analytics/ReaderConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0$a;->a:Lio/bidmachine/analytics/ReaderConfig;

    .line 2
    .line 3
    return-object v0
.end method
