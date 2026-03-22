.class public final synthetic Lio/bidmachine/b4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/bidmachine/b4;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/b4;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lio/bidmachine/c4$a$a;->b(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
