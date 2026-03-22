package com.google.firebase.crashlytics.ndk;

import androidx.annotation.Nullable;
import e8.f0;
import java.io.File;
/* compiled from: SessionFiles.java */
/* loaded from: classes5.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    public final c f20906a;

    /* renamed from: b  reason: collision with root package name */
    public final File f20907b;

    /* renamed from: c  reason: collision with root package name */
    public final File f20908c;

    /* renamed from: d  reason: collision with root package name */
    public final File f20909d;

    /* renamed from: e  reason: collision with root package name */
    public final File f20910e;

    /* renamed from: f  reason: collision with root package name */
    public final File f20911f;

    /* renamed from: g  reason: collision with root package name */
    public final File f20912g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SessionFiles.java */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private c f20913a;

        /* renamed from: b  reason: collision with root package name */
        private File f20914b;

        /* renamed from: c  reason: collision with root package name */
        private File f20915c;

        /* renamed from: d  reason: collision with root package name */
        private File f20916d;

        /* renamed from: e  reason: collision with root package name */
        private File f20917e;

        /* renamed from: f  reason: collision with root package name */
        private File f20918f;

        /* renamed from: g  reason: collision with root package name */
        private File f20919g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b h(File file) {
            this.f20917e = file;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public f i() {
            return new f(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b j(File file) {
            this.f20918f = file;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b k(File file) {
            this.f20915c = file;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b l(c cVar) {
            this.f20913a = cVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b m(File file) {
            this.f20919g = file;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b n(File file) {
            this.f20916d = file;
            return this;
        }
    }

    /* compiled from: SessionFiles.java */
    /* loaded from: classes5.dex */
    static final class c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final File f20920a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final f0.a f20921b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(@Nullable File file, @Nullable f0.a aVar) {
            this.f20920a = file;
            this.f20921b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a() {
            File file = this.f20920a;
            if ((file != null && file.exists()) || this.f20921b != null) {
                return true;
            }
            return false;
        }
    }

    private f(b bVar) {
        this.f20906a = bVar.f20913a;
        this.f20907b = bVar.f20914b;
        this.f20908c = bVar.f20915c;
        this.f20909d = bVar.f20916d;
        this.f20910e = bVar.f20917e;
        this.f20911f = bVar.f20918f;
        this.f20912g = bVar.f20919g;
    }
}
