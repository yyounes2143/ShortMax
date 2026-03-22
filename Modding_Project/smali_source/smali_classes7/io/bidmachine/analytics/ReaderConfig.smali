.class public final Lio/bidmachine/analytics/ReaderConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/ReaderConfig$Rule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/ReaderConfig$Rule;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/ReaderConfig;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/ReaderConfig;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/bidmachine/analytics/ReaderConfig;->c:J

    .line 9
    .line 10
    iput-boolean p5, p0, Lio/bidmachine/analytics/ReaderConfig;->d:Z

    .line 11
    .line 12
    iput-object p6, p0, Lio/bidmachine/analytics/ReaderConfig;->e:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/ReaderConfig;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/ReaderConfig$Rule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUniqueOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/ReaderConfig;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
