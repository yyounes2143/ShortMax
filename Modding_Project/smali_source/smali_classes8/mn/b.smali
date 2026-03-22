.class public final Lmn/b;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lmn/d;


# instance fields
.field private final a:Len/d$a;


# direct methods
.method public constructor <init>(Len/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmn/b;->a:Len/d$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Len/d;
    .locals 0

    .line 1
    iget-object p1, p0, Lmn/b;->a:Len/d$a;

    .line 2
    .line 3
    invoke-interface {p1}, Len/d$a;->createDataSource()Len/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
