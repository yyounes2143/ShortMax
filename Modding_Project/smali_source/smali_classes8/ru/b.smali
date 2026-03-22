.class public final Lru/b;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/b$a;
    }
.end annotation


# static fields
.field private static final a:Lru/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lru/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lru/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lru/b;->a:Lru/b$a;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lku/j;
    .locals 1

    .line 1
    sget-object v0, Lru/b;->a:Lru/b$a;

    .line 2
    .line 3
    return-object v0
.end method
