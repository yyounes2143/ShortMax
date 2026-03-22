.class public final Lio/bidmachine/analytics/internal/X$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/MonitorConfig;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/explorestack/protobuf/Struct;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/MonitorConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/X$b;->a:Lio/bidmachine/analytics/MonitorConfig;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/internal/X$b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/analytics/internal/X$b;->c:Lcom/explorestack/protobuf/Struct;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X$b;->c:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/bidmachine/analytics/MonitorConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X$b;->a:Lio/bidmachine/analytics/MonitorConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
