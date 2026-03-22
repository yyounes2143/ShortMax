.class public abstract Lcom/amazonaws/metrics/RequestMetricCollector;
.super Ljava/lang/Object;
.source "RequestMetricCollector.java"


# static fields
.field public static final a:Lcom/amazonaws/metrics/RequestMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/metrics/RequestMetricCollector$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/metrics/RequestMetricCollector$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/amazonaws/metrics/RequestMetricCollector;->a:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract b()Z
.end method
