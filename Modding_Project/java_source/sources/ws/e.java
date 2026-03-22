package ws;

import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.io.AccessDeniedException;
import kotlin.io.FileWalkDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FileTreeWalk.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e implements Sequence<File> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final File f70246a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final FileWalkDirection f70247b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Function1<File, Boolean> f70248c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Function1<File, Unit> f70249d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Function2<File, IOException, Unit> f70250e;

    /* renamed from: f  reason: collision with root package name */
    private final int f70251f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileTreeWalk.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$DirectoryState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"})
    /* loaded from: classes8.dex */
    public static abstract class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull File rootDir) {
            super(rootDir);
            Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        }
    }

    /* compiled from: FileTreeWalk.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private final class b extends kotlin.collections.c<File> {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ArrayDeque<c> f70252c;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FileTreeWalk.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public final class a extends a {

            /* renamed from: b  reason: collision with root package name */
            private boolean f70254b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private File[] f70255c;

            /* renamed from: d  reason: collision with root package name */
            private int f70256d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f70257e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ b f70258f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(@NotNull b bVar, File rootDir) {
                super(rootDir);
                Intrinsics.checkNotNullParameter(rootDir, "rootDir");
                this.f70258f = bVar;
            }

            @Override // ws.e.c
            @Nullable
            public File b() {
                if (!this.f70257e && this.f70255c == null) {
                    Function1 function1 = e.this.f70248c;
                    if (function1 != null && !((Boolean) function1.invoke(a())).booleanValue()) {
                        return null;
                    }
                    File[] listFiles = a().listFiles();
                    this.f70255c = listFiles;
                    if (listFiles == null) {
                        Function2 function2 = e.this.f70250e;
                        if (function2 != null) {
                            function2.invoke(a(), new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.f70257e = true;
                    }
                }
                File[] fileArr = this.f70255c;
                if (fileArr != null) {
                    int i10 = this.f70256d;
                    Intrinsics.checkNotNull(fileArr);
                    if (i10 < fileArr.length) {
                        File[] fileArr2 = this.f70255c;
                        Intrinsics.checkNotNull(fileArr2);
                        int i11 = this.f70256d;
                        this.f70256d = i11 + 1;
                        return fileArr2[i11];
                    }
                }
                if (this.f70254b) {
                    Function1 function12 = e.this.f70249d;
                    if (function12 != null) {
                        function12.invoke(a());
                    }
                    return null;
                }
                this.f70254b = true;
                return a();
            }
        }

        /* compiled from: FileTreeWalk.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"})
        /* renamed from: ws.e$b$b  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        private final class C0965b extends c {

            /* renamed from: b  reason: collision with root package name */
            private boolean f70259b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ b f70260c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0965b(@NotNull b bVar, File rootFile) {
                super(rootFile);
                Intrinsics.checkNotNullParameter(rootFile, "rootFile");
                this.f70260c = bVar;
            }

            @Override // ws.e.c
            @Nullable
            public File b() {
                if (this.f70259b) {
                    return null;
                }
                this.f70259b = true;
                return a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FileTreeWalk.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public final class c extends a {

            /* renamed from: b  reason: collision with root package name */
            private boolean f70261b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private File[] f70262c;

            /* renamed from: d  reason: collision with root package name */
            private int f70263d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ b f70264e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@NotNull b bVar, File rootDir) {
                super(rootDir);
                Intrinsics.checkNotNullParameter(rootDir, "rootDir");
                this.f70264e = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
                if (r0.length == 0) goto L30;
             */
            @Override // ws.e.c
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.io.File b() {
                /*
                    r10 = this;
                    boolean r0 = r10.f70261b
                    r1 = 0
                    if (r0 != 0) goto L28
                    ws.e$b r0 = r10.f70264e
                    ws.e r0 = ws.e.this
                    kotlin.jvm.functions.Function1 r0 = ws.e.e(r0)
                    if (r0 == 0) goto L20
                    java.io.File r2 = r10.a()
                    java.lang.Object r0 = r0.invoke(r2)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L20
                    return r1
                L20:
                    r0 = 1
                    r10.f70261b = r0
                    java.io.File r0 = r10.a()
                    return r0
                L28:
                    java.io.File[] r0 = r10.f70262c
                    if (r0 == 0) goto L47
                    int r2 = r10.f70263d
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r0 = r0.length
                    if (r2 >= r0) goto L35
                    goto L47
                L35:
                    ws.e$b r0 = r10.f70264e
                    ws.e r0 = ws.e.this
                    kotlin.jvm.functions.Function1 r0 = ws.e.g(r0)
                    if (r0 == 0) goto L46
                    java.io.File r2 = r10.a()
                    r0.invoke(r2)
                L46:
                    return r1
                L47:
                    java.io.File[] r0 = r10.f70262c
                    if (r0 != 0) goto L93
                    java.io.File r0 = r10.a()
                    java.io.File[] r0 = r0.listFiles()
                    r10.f70262c = r0
                    if (r0 != 0) goto L77
                    ws.e$b r0 = r10.f70264e
                    ws.e r0 = ws.e.this
                    kotlin.jvm.functions.Function2 r0 = ws.e.f(r0)
                    if (r0 == 0) goto L77
                    java.io.File r2 = r10.a()
                    kotlin.io.AccessDeniedException r9 = new kotlin.io.AccessDeniedException
                    java.io.File r4 = r10.a()
                    r7 = 2
                    r8 = 0
                    r5 = 0
                    java.lang.String r6 = "Cannot list files in a directory"
                    r3 = r9
                    r3.<init>(r4, r5, r6, r7, r8)
                    r0.invoke(r2, r9)
                L77:
                    java.io.File[] r0 = r10.f70262c
                    if (r0 == 0) goto L81
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r0 = r0.length
                    if (r0 != 0) goto L93
                L81:
                    ws.e$b r0 = r10.f70264e
                    ws.e r0 = ws.e.this
                    kotlin.jvm.functions.Function1 r0 = ws.e.g(r0)
                    if (r0 == 0) goto L92
                    java.io.File r2 = r10.a()
                    r0.invoke(r2)
                L92:
                    return r1
                L93:
                    java.io.File[] r0 = r10.f70262c
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r1 = r10.f70263d
                    int r2 = r1 + 1
                    r10.f70263d = r2
                    r0 = r0[r1]
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: ws.e.b.c.b():java.io.File");
            }
        }

        /* compiled from: FileTreeWalk.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public /* synthetic */ class d {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[FileWalkDirection.values().length];
                try {
                    iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public b() {
            ArrayDeque<c> arrayDeque = new ArrayDeque<>();
            this.f70252c = arrayDeque;
            if (e.this.f70246a.isDirectory()) {
                arrayDeque.push(e(e.this.f70246a));
            } else if (e.this.f70246a.isFile()) {
                arrayDeque.push(new C0965b(this, e.this.f70246a));
            } else {
                b();
            }
        }

        private final a e(File file) {
            int i10 = d.$EnumSwitchMapping$0[e.this.f70247b.ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return new a(this, file);
                }
                throw new NoWhenBranchMatchedException();
            }
            return new c(this, file);
        }

        private final File f() {
            File b10;
            while (true) {
                c peek = this.f70252c.peek();
                if (peek == null) {
                    return null;
                }
                b10 = peek.b();
                if (b10 == null) {
                    this.f70252c.pop();
                } else if (Intrinsics.areEqual(b10, peek.a()) || !b10.isDirectory() || this.f70252c.size() >= e.this.f70251f) {
                    break;
                } else {
                    this.f70252c.push(e(b10));
                }
            }
            return b10;
        }

        @Override // kotlin.collections.c
        protected void a() {
            File f10 = f();
            if (f10 != null) {
                c(f10);
            } else {
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileTreeWalk.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static abstract class c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final File f70265a;

        public c(@NotNull File root) {
            Intrinsics.checkNotNullParameter(root, "root");
            this.f70265a = root;
        }

        @NotNull
        public final File a() {
            return this.f70265a;
        }

        @Nullable
        public abstract File b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private e(File file, FileWalkDirection fileWalkDirection, Function1<? super File, Boolean> function1, Function1<? super File, Unit> function12, Function2<? super File, ? super IOException, Unit> function2, int i10) {
        this.f70246a = file;
        this.f70247b = fileWalkDirection;
        this.f70248c = function1;
        this.f70249d = function12;
        this.f70250e = function2;
        this.f70251f = i10;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<File> iterator() {
        return new b();
    }

    /* synthetic */ e(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function12, Function2 function2, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i11 & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection, function1, function12, function2, (i11 & 32) != 0 ? Integer.MAX_VALUE : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(@NotNull File start, @NotNull FileWalkDirection direction) {
        this(start, direction, null, null, null, 0, 32, null);
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(direction, "direction");
    }
}
