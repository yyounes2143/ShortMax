.class public Lcom/moloco/sdk/acm/db/e$d;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/db/e;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/acm/db/e;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/db/e;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/db/e$d;->a:Lcom/moloco/sdk/acm/db/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM sqlite_sequence WHERE name=\'events\'"

    .line 2
    .line 3
    return-object v0
.end method
