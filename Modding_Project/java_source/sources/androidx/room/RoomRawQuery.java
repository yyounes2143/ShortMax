package androidx.room;

import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RoomRawQuery.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RoomRawQuery {
    @NotNull
    private final Function1<SQLiteStatement, Unit> bindingFunction;
    @NotNull
    private final String sql;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RoomRawQuery(@NotNull String sql) {
        this(sql, null, 2, null);
        Intrinsics.checkNotNullParameter(sql, "sql");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(SQLiteStatement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bindingFunction$lambda$1(Function1 function1, SQLiteStatement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        function1.invoke(new BindOnlySQLiteStatement(it));
        return Unit.f60915a;
    }

    @NotNull
    public final Function1<SQLiteStatement, Unit> getBindingFunction() {
        return this.bindingFunction;
    }

    @NotNull
    public final String getSql() {
        return this.sql;
    }

    public RoomRawQuery(@NotNull String sql, @NotNull final Function1<? super SQLiteStatement, Unit> onBindStatement) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        Intrinsics.checkNotNullParameter(onBindStatement, "onBindStatement");
        this.sql = sql;
        this.bindingFunction = new Function1() { // from class: androidx.room.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit bindingFunction$lambda$1;
                bindingFunction$lambda$1 = RoomRawQuery.bindingFunction$lambda$1(Function1.this, (SQLiteStatement) obj);
                return bindingFunction$lambda$1;
            }
        };
    }

    public /* synthetic */ RoomRawQuery(String str, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? new Function1() { // from class: androidx.room.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit _init_$lambda$0;
                _init_$lambda$0 = RoomRawQuery._init_$lambda$0((SQLiteStatement) obj);
                return _init_$lambda$0;
            }
        } : function1);
    }
}
