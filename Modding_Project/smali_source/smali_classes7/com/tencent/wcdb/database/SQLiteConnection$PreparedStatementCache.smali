.class final Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;
.super Lcom/tencent/wcdb/support/LruCache;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/database/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparedStatementCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/wcdb/support/LruCache<",
        "Ljava/lang/String;",
        "Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wcdb/database/SQLiteConnection;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteConnection;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;->this$0:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/tencent/wcdb/support/LruCache;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 7

    .line 1
    const-string v0, "  Prepared statement cache:"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tencent/wcdb/support/LruCache;->snapshot()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 42
    .line 43
    invoke-static {v3}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$500(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v5, "    "

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, ": statementPtr=0x"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, ", numParameters="

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {v3}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$200(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, ", type="

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {v3}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, ", readOnly="

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {v3}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$300(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, ", sql=\""

    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "\""

    .line 133
    .line 134
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    const-string v0, "    <none>"

    .line 148
    .line 149
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    check-cast p4, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-static {p3, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$502(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)Z

    .line 3
    invoke-static {p3}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$400(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;->this$0:Lcom/tencent/wcdb/database/SQLiteConnection;

    invoke-static {p1, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->access$1400(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    :cond_0
    return-void
.end method
