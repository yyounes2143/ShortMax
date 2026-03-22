package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.InternalComposeApi;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.changelist.Operation;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Operations.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nOperations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n+ 2 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,644:1\n145#1,5:645\n158#1,5:650\n255#1:659\n255#1:660\n334#1,7:668\n325#1,16:675\n357#1:691\n357#1:692\n334#1,7:693\n27#2,2:655\n27#2,2:657\n27#2,2:666\n4802#3,4:661\n1#4:665\n*S KotlinDebug\n*F\n+ 1 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n*L\n123#1:645,5\n124#1:650,5\n212#1:659\n213#1:660\n325#1:668,7\n348#1:675,16\n360#1:691\n363#1:692\n578#1:693,7\n141#1:655,2\n166#1:657,2\n295#1:666,2\n211#1:661,4\n*E\n"})
/* loaded from: classes.dex */
public final class Operations extends OperationsDebugStringFormattable {
    public static final int $stable = 8;
    public int intArgsSize;
    public int objectArgsSize;
    public int opCodesSize;
    private int pushedIntMask;
    private int pushedObjectMask;
    @NotNull
    public Operation[] opCodes = new Operation[16];
    @NotNull
    public int[] intArgs = new int[16];
    @NotNull
    public Object[] objectArgs = new Object[16];

    /* compiled from: Operations.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class OpIterator implements OperationArgContainer {
        private int intIdx;
        private int objIdx;
        private int opIdx;

        public OpIterator() {
        }

        @NotNull
        public final String currentOperationDebugString() {
            Operations operations = Operations.this;
            String str = "operation[" + this.opIdx + "] = " + operations.currentOpToDebugString(this, "");
            Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
            return str;
        }

        @Override // androidx.compose.runtime.changelist.OperationArgContainer
        public int getInt(int i10) {
            return Operations.this.intArgs[this.intIdx + i10];
        }

        @Override // androidx.compose.runtime.changelist.OperationArgContainer
        /* renamed from: getObject-31yXWZQ */
        public <T> T mo1434getObject31yXWZQ(int i10) {
            return (T) Operations.this.objectArgs[this.objIdx + i10];
        }

        @NotNull
        public final Operation getOperation() {
            return Operations.this.opCodes[this.opIdx];
        }

        public final boolean next() {
            if (this.opIdx >= Operations.this.opCodesSize) {
                return false;
            }
            Operation operation = getOperation();
            this.intIdx += operation.getInts();
            this.objIdx += operation.getObjects();
            int i10 = this.opIdx + 1;
            this.opIdx = i10;
            if (i10 >= Operations.this.opCodesSize) {
                return false;
            }
            return true;
        }
    }

    private final int createExpectedArgMask(int i10) {
        int i11;
        if (i10 == 0) {
            i11 = 0;
        } else {
            i11 = -1;
        }
        return i11 >>> (32 - i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String currentOpToDebugString(OpIterator opIterator, String str) {
        Operation operation = opIterator.getOperation();
        if (operation.getInts() == 0 && operation.getObjects() == 0) {
            return operation.getName();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(operation.getName());
        sb2.append('(');
        String indent = indent(str);
        int ints = operation.getInts();
        boolean z10 = true;
        for (int i10 = 0; i10 < ints; i10++) {
            String intParamName = operation.intParamName(i10);
            if (!z10) {
                sb2.append(", ");
            } else {
                z10 = false;
            }
            sb2.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            sb2.append(indent);
            sb2.append(intParamName);
            sb2.append(" = ");
            sb2.append(opIterator.getInt(i10));
        }
        int objects = operation.getObjects();
        for (int i11 = 0; i11 < objects; i11++) {
            int m1414constructorimpl = Operation.ObjectParameter.m1414constructorimpl(i11);
            String mo1388objectParamName31yXWZQ = operation.mo1388objectParamName31yXWZQ(m1414constructorimpl);
            if (!z10) {
                sb2.append(", ");
            } else {
                z10 = false;
            }
            sb2.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            sb2.append(indent);
            sb2.append(mo1388objectParamName31yXWZQ);
            sb2.append(" = ");
            sb2.append(formatOpArgumentToString(opIterator.mo1434getObject31yXWZQ(m1414constructorimpl), indent));
        }
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append(str);
        sb2.append(")");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private final int determineNewSize(int i10, int i11) {
        return e.e(i10 + e.j(i10, 1024), i11);
    }

    private final void ensureIntArgsSizeAtLeast(int i10) {
        int length = this.intArgs.length;
        if (i10 > length) {
            resizeIntArgs(length, i10);
        }
    }

    private final void ensureObjectArgsSizeAtLeast(int i10) {
        int length = this.objectArgs.length;
        if (i10 > length) {
            resizeObjectArgs(length, i10);
        }
    }

    private final String exceptionMessageForOperationPushNoScope(Operation operation) {
        return "Cannot push " + operation + " without arguments because it expects " + operation.getInts() + " ints and " + operation.getObjects() + " objects.";
    }

    private final String exceptionMessageForOperationPushWithScope(Operation operation) {
        StringBuilder sb2 = new StringBuilder();
        int ints = operation.getInts();
        int i10 = 0;
        for (int i11 = 0; i11 < ints; i11++) {
            if (((1 << i11) & this.pushedIntMask) == 0) {
                if (i10 > 0) {
                    sb2.append(", ");
                }
                sb2.append(operation.intParamName(i11));
                i10++;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        StringBuilder sb4 = new StringBuilder();
        int objects = operation.getObjects();
        int i12 = 0;
        for (int i13 = 0; i13 < objects; i13++) {
            if (((1 << i13) & this.pushedObjectMask) == 0) {
                if (i10 > 0) {
                    sb4.append(", ");
                }
                sb4.append(operation.mo1388objectParamName31yXWZQ(Operation.ObjectParameter.m1414constructorimpl(i13)));
                i12++;
            }
        }
        String sb5 = sb4.toString();
        Intrinsics.checkNotNullExpressionValue(sb5, "toString(...)");
        return "Error while pushing " + operation + ". Not all arguments were provided. Missing " + i10 + " int arguments (" + sb3 + ") and " + i12 + " object arguments (" + sb5 + ").";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatOpArgumentToString(Object obj, String str) {
        if (obj == null) {
            return "null";
        }
        if (obj instanceof Object[]) {
            return toCollectionString(n.Z((Object[]) obj), str);
        }
        if (obj instanceof int[]) {
            return toCollectionString(n.X((int[]) obj), str);
        }
        if (obj instanceof long[]) {
            return toCollectionString(n.Y((long[]) obj), str);
        }
        if (obj instanceof float[]) {
            return toCollectionString(n.W((float[]) obj), str);
        }
        if (obj instanceof double[]) {
            return toCollectionString(n.V((double[]) obj), str);
        }
        if (obj instanceof Iterable) {
            return toCollectionString((Iterable) obj, str);
        }
        if (obj instanceof OperationsDebugStringFormattable) {
            return ((OperationsDebugStringFormattable) obj).toDebugString(str);
        }
        return obj.toString();
    }

    private final String indent(String str) {
        return str + "    ";
    }

    private final Operation peekOperation() {
        return this.opCodes[this.opCodesSize - 1];
    }

    private final void resizeIntArgs(int i10, int i11) {
        int[] iArr = new int[determineNewSize(i10, i11)];
        n.l(this.intArgs, iArr, 0, 0, i10);
        this.intArgs = iArr;
    }

    private final void resizeObjectArgs(int i10, int i11) {
        Object[] objArr = new Object[determineNewSize(i10, i11)];
        System.arraycopy(this.objectArgs, 0, objArr, 0, i10);
        this.objectArgs = objArr;
    }

    private final void resizeOpCodes() {
        int j10 = e.j(this.opCodesSize, 1024);
        int i10 = this.opCodesSize;
        Operation[] operationArr = new Operation[j10 + i10];
        System.arraycopy(this.opCodes, 0, operationArr, 0, i10);
        this.opCodes = operationArr;
    }

    private final <T> String toCollectionString(Iterable<? extends T> iterable, final String str) {
        return CollectionsKt.A0(iterable, ", ", "[", "]", 0, null, new Function1() { // from class: androidx.compose.runtime.changelist.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence formatOpArgumentToString;
                formatOpArgumentToString = Operations.this.formatOpArgumentToString(obj, str);
                return formatOpArgumentToString;
            }
        }, 24, null);
    }

    private final int topIntIndexOf(int i10) {
        return (this.intArgsSize - this.opCodes[this.opCodesSize - 1].getInts()) + i10;
    }

    /* renamed from: topObjectIndexOf-31yXWZQ  reason: not valid java name */
    private final int m1435topObjectIndexOf31yXWZQ(int i10) {
        return (this.objectArgsSize - this.opCodes[this.opCodesSize - 1].getObjects()) + i10;
    }

    public final void clear() {
        this.opCodesSize = 0;
        this.intArgsSize = 0;
        n.C(this.objectArgs, null, 0, this.objectArgsSize);
        this.objectArgsSize = 0;
    }

    public final void drain(@NotNull Function1<? super OpIterator, Unit> function1) {
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            do {
                function1.invoke(opIterator);
            } while (opIterator.next());
            clear();
        }
        clear();
    }

    public final void ensureAllArgumentsPushedFor(@NotNull Operation operation) {
        int i10;
        int i11 = this.pushedIntMask;
        int ints = operation.getInts();
        if (ints == 0) {
            i10 = 0;
        } else {
            i10 = -1;
        }
        if (i11 == (i10 >>> (32 - ints))) {
            operation.getObjects();
        }
    }

    public final void executeAndFlushAllPendingOperations(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            do {
                opIterator.getOperation().executeWithComposeStackTrace(opIterator, applier, slotWriter, rememberManager, operationErrorContext);
            } while (opIterator.next());
            clear();
        }
        clear();
    }

    public final void forEach(@NotNull Function1<? super OpIterator, Unit> function1) {
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            do {
                function1.invoke(opIterator);
            } while (opIterator.next());
        }
    }

    public final int getSize() {
        return this.opCodesSize;
    }

    public final boolean isEmpty() {
        if (getSize() == 0) {
            return true;
        }
        return false;
    }

    public final boolean isNotEmpty() {
        if (getSize() != 0) {
            return true;
        }
        return false;
    }

    public final void pop() {
        Operation[] operationArr = this.opCodes;
        int i10 = this.opCodesSize - 1;
        this.opCodesSize = i10;
        Operation operation = operationArr[i10];
        operationArr[i10] = null;
        int objects = operation.getObjects();
        for (int i11 = 0; i11 < objects; i11++) {
            Object[] objArr = this.objectArgs;
            int i12 = this.objectArgsSize - 1;
            this.objectArgsSize = i12;
            objArr[i12] = null;
        }
        this.intArgsSize -= operation.getInts();
    }

    public final void popInto(@NotNull Operations operations) {
        Operation[] operationArr = this.opCodes;
        int i10 = this.opCodesSize - 1;
        this.opCodesSize = i10;
        Operation operation = operationArr[i10];
        operationArr[i10] = null;
        operations.pushOp(operation);
        Object[] objArr = this.objectArgs;
        Object[] objArr2 = operations.objectArgs;
        int objects = operations.objectArgsSize - operation.getObjects();
        int objects2 = this.objectArgsSize - operation.getObjects();
        System.arraycopy(objArr, objects2, objArr2, objects, this.objectArgsSize - objects2);
        n.C(this.objectArgs, null, this.objectArgsSize - operation.getObjects(), this.objectArgsSize);
        n.l(this.intArgs, operations.intArgs, operations.intArgsSize - operation.getInts(), this.intArgsSize - operation.getInts(), this.intArgsSize);
        this.objectArgsSize -= operation.getObjects();
        this.intArgsSize -= operation.getInts();
    }

    public final void push(@NotNull Operation operation) {
        pushOp(operation);
    }

    @InternalComposeApi
    public final void pushOp(@NotNull Operation operation) {
        if (this.opCodesSize == this.opCodes.length) {
            resizeOpCodes();
        }
        int ints = this.intArgsSize + operation.getInts();
        int length = this.intArgs.length;
        if (ints > length) {
            resizeIntArgs(length, ints);
        }
        int objects = this.objectArgsSize + operation.getObjects();
        int length2 = this.objectArgs.length;
        if (objects > length2) {
            resizeObjectArgs(length2, objects);
        }
        Operation[] operationArr = this.opCodes;
        int i10 = this.opCodesSize;
        this.opCodesSize = i10 + 1;
        operationArr[i10] = operation;
        this.intArgsSize += operation.getInts();
        this.objectArgsSize += operation.getObjects();
    }

    @Override // androidx.compose.runtime.changelist.OperationsDebugStringFormattable
    @NotNull
    public String toDebugString(@NotNull String str) {
        StringBuilder sb2 = new StringBuilder();
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            int i10 = 0;
            while (true) {
                sb2.append(str);
                int i11 = i10 + 1;
                sb2.append(i10);
                sb2.append(". ");
                sb2.append(currentOpToDebugString(opIterator, str));
                Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
                sb2.append('\n');
                Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
                if (!opIterator.next()) {
                    break;
                }
                i10 = i11;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @ms.c
    @NotNull
    public String toString() {
        return super.toString();
    }

    public final void push(@NotNull Operation operation, @NotNull Function1<? super WriteScope, Unit> function1) {
        pushOp(operation);
        function1.invoke(WriteScope.m1436boximpl(WriteScope.m1437constructorimpl(this)));
        ensureAllArgumentsPushedFor(operation);
    }

    /* compiled from: Operations.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nOperations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operations.kt\nandroidx/compose/runtime/changelist/Operations$WriteScope\n+ 2 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n*L\n1#1,644:1\n357#2:645\n360#2:646\n357#2:647\n357#2:648\n357#2:649\n363#2:650\n357#2:651\n357#2:652\n357#2:653\n357#2:654\n*S KotlinDebug\n*F\n+ 1 Operations.kt\nandroidx/compose/runtime/changelist/Operations$WriteScope\n*L\n368#1:645\n379#1:646\n379#1:647\n397#1:648\n421#1:649\n437#1:650\n437#1:651\n455#1:652\n482#1:653\n514#1:654\n*E\n"})
    /* loaded from: classes.dex */
    public static final class WriteScope {
        @NotNull
        private final Operations stack;

        private /* synthetic */ WriteScope(Operations operations) {
            this.stack = operations;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ WriteScope m1436boximpl(Operations operations) {
            return new WriteScope(operations);
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m1438equalsimpl(Operations operations, Object obj) {
            if (!(obj instanceof WriteScope) || !Intrinsics.areEqual(operations, ((WriteScope) obj).m1450unboximpl())) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m1439equalsimpl0(Operations operations, Operations operations2) {
            return Intrinsics.areEqual(operations, operations2);
        }

        @NotNull
        /* renamed from: getOperation-impl  reason: not valid java name */
        public static final Operation m1440getOperationimpl(Operations operations) {
            return operations.opCodes[operations.opCodesSize - 1];
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m1441hashCodeimpl(Operations operations) {
            return operations.hashCode();
        }

        /* renamed from: setInt-impl  reason: not valid java name */
        public static final void m1442setIntimpl(Operations operations, int i10, int i11) {
            operations.intArgs[(operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].getInts()) + i10] = i11;
        }

        /* renamed from: setInts-impl  reason: not valid java name */
        public static final void m1443setIntsimpl(Operations operations, int i10, int i11, int i12, int i13) {
            int ints = operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].getInts();
            int[] iArr = operations.intArgs;
            iArr[i10 + ints] = i11;
            iArr[ints + i12] = i13;
        }

        /* renamed from: setObject-DKhxnng  reason: not valid java name */
        public static final <T> void m1445setObjectDKhxnng(Operations operations, int i10, T t10) {
            operations.objectArgs[(operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects()) + i10] = t10;
        }

        /* renamed from: setObjects-4uCC6AY  reason: not valid java name */
        public static final <T, U> void m1446setObjects4uCC6AY(Operations operations, int i10, T t10, int i11, U u10) {
            int objects = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects();
            Object[] objArr = operations.objectArgs;
            objArr[i10 + objects] = t10;
            objArr[objects + i11] = u10;
        }

        /* renamed from: setObjects-OGa0p1M  reason: not valid java name */
        public static final <T, U, V, W> void m1447setObjectsOGa0p1M(Operations operations, int i10, T t10, int i11, U u10, int i12, V v10, int i13, W w10) {
            int objects = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects();
            Object[] objArr = operations.objectArgs;
            objArr[i10 + objects] = t10;
            objArr[i11 + objects] = u10;
            objArr[i12 + objects] = v10;
            objArr[objects + i13] = w10;
        }

        /* renamed from: setObjects-t7hvbck  reason: not valid java name */
        public static final <T, U, V> void m1448setObjectst7hvbck(Operations operations, int i10, T t10, int i11, U u10, int i12, V v10) {
            int objects = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects();
            Object[] objArr = operations.objectArgs;
            objArr[i10 + objects] = t10;
            objArr[i11 + objects] = u10;
            objArr[objects + i12] = v10;
        }

        /* renamed from: toString-impl  reason: not valid java name */
        public static String m1449toStringimpl(Operations operations) {
            return "WriteScope(stack=" + operations + ')';
        }

        public boolean equals(Object obj) {
            return m1438equalsimpl(this.stack, obj);
        }

        public int hashCode() {
            return m1441hashCodeimpl(this.stack);
        }

        public String toString() {
            return m1449toStringimpl(this.stack);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ Operations m1450unboximpl() {
            return this.stack;
        }

        /* renamed from: setInts-impl  reason: not valid java name */
        public static final void m1444setIntsimpl(Operations operations, int i10, int i11, int i12, int i13, int i14, int i15) {
            int ints = operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].getInts();
            int[] iArr = operations.intArgs;
            iArr[i10 + ints] = i11;
            iArr[i12 + ints] = i13;
            iArr[ints + i14] = i15;
        }

        @NotNull
        /* renamed from: constructor-impl  reason: not valid java name */
        public static Operations m1437constructorimpl(@NotNull Operations operations) {
            return operations;
        }
    }

    public static /* synthetic */ void getOpCodes$runtime$annotations() {
    }
}
