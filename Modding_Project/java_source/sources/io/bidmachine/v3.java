package io.bidmachine;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.OS;
import io.bidmachine.protobuf.RequestTokenPayload;
import io.bidmachine.protobuf.sdk.Device;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeviceParams.java */
/* loaded from: classes7.dex */
public final class v3 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final w2 f58696a;

    public v3(@NonNull w2 w2Var) {
        this.f58696a = w2Var;
    }

    @Nullable
    private Device.Builder c(@NonNull Context context, @NonNull lp.d dVar) {
        try {
            Device.Builder newBuilder = Device.newBuilder();
            e(context, newBuilder, dVar);
            return newBuilder;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    private Context.Device.Builder d(@NonNull android.content.Context context, @NonNull TargetingParams targetingParams, @NonNull TargetingParams targetingParams2, @NonNull lp.d dVar, @Nullable ConnectionType connectionType) {
        try {
            Context.Device.Builder newBuilder = Context.Device.newBuilder();
            f(context, newBuilder, targetingParams, targetingParams2, dVar, connectionType);
            return newBuilder;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void e(@NonNull android.content.Context context, @NonNull final Device.Builder builder, @NonNull lp.d dVar) {
        j2 e10 = j2.e();
        String j10 = e10.j();
        Objects.requireNonNull(builder);
        io.bidmachine.core.g.G(j10, new Executable() { // from class: io.bidmachine.r3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setIfv((String) obj);
            }
        });
        builder.setBmIfv(e10.I(context));
        Set<String> e11 = fr.c.e(context);
        if (!e11.isEmpty()) {
            builder.addAllInputlanguage(e11);
        }
        io.bidmachine.core.g.H(fr.c.s(context), new Executable() { // from class: io.bidmachine.c3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setCharging(((Boolean) obj).booleanValue());
            }
        });
        io.bidmachine.core.g.H(fr.b.d(context), new Executable() { // from class: io.bidmachine.d3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setHeadset(((Boolean) obj).booleanValue());
            }
        });
        Double a10 = fr.c.a(context);
        if (a10 != null) {
            builder.setBatterylevel(a10.floatValue());
        }
        io.bidmachine.core.g.H(fr.c.r(context), new Executable() { // from class: io.bidmachine.e3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setBatterysaver(((Boolean) obj).booleanValue());
            }
        });
        builder.setDarkmode(fr.c.t(context));
        io.bidmachine.core.g.H(fr.c.q(context), new Executable() { // from class: io.bidmachine.f3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setAirplane(((Boolean) obj).booleanValue());
            }
        });
        io.bidmachine.core.g.H(fr.c.u(context), new Executable() { // from class: io.bidmachine.g3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setDnd(((Boolean) obj).booleanValue());
            }
        });
        if (dVar.a()) {
            io.bidmachine.core.g.G(fr.c.c(context), new Executable() { // from class: io.bidmachine.h3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Device.Builder.this.setDevicename((String) obj);
                }
            });
            this.f58696a.b(context, builder, fr.c.b(context));
        }
        Double k10 = fr.c.k(context);
        if (k10 != null) {
            builder.setScreenbright(k10.floatValue());
        }
        builder.setLastbootup(SystemClock.elapsedRealtime());
        Set<String> c10 = fr.b.c(context);
        if (c10 != null && !c10.isEmpty()) {
            io.bidmachine.core.g.H(c10.iterator().next(), new Executable() { // from class: io.bidmachine.i3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Device.Builder.this.setHeadsetname((String) obj);
                }
            });
        }
        builder.setApilevel(Build.VERSION.SDK_INT);
        builder.setTime(io.bidmachine.core.b.a());
        io.bidmachine.core.g.G(io.bidmachine.core.b.b(), new Executable() { // from class: io.bidmachine.k3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setTimezone((String) obj);
            }
        });
        DeviceInfo obtain = DeviceInfo.obtain(context);
        Long availableDiskSpaceInMB = obtain.getAvailableDiskSpaceInMB();
        if (availableDiskSpaceInMB != null) {
            builder.setDiskspace(availableDiskSpaceInMB.intValue());
        }
        Long totalDiskSpaceInMB = obtain.getTotalDiskSpaceInMB();
        if (totalDiskSpaceInMB != null) {
            builder.setTotaldisk(totalDiskSpaceInMB.intValue());
        }
        builder.setJailbreak(obtain.isDeviceRooted());
        io.bidmachine.core.g.H(obtain.getAudio().c(context), new Executable() { // from class: io.bidmachine.l3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setRingmute(((Boolean) obj).booleanValue());
            }
        });
        Float b10 = obtain.getAudio().b(context);
        if (b10 != null) {
            builder.setAudioContext(Context.Device.AudioContext.newBuilder().setVolumelevel(b10.floatValue()).build());
        }
        obtain.updateHwInfo(context);
        io.bidmachine.core.g.H(obtain.getRam().c(), new Executable() { // from class: io.bidmachine.s3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setTotalmem(((Long) obj).longValue());
            }
        });
        io.bidmachine.core.g.H(obtain.getRam().b(), new Executable() { // from class: io.bidmachine.t3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setFreemem(((Long) obj).longValue());
            }
        });
        io.bidmachine.core.g.G(obtain.getCpu().c(), new Executable() { // from class: io.bidmachine.u3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setCpuname((String) obj);
            }
        });
        io.bidmachine.core.g.G(obtain.getCpu().d(), new Executable() { // from class: io.bidmachine.z2
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setCpuvendor((String) obj);
            }
        });
        io.bidmachine.core.g.G(obtain.getGpu().f(), new Executable() { // from class: io.bidmachine.a3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setGpuname((String) obj);
            }
        });
        io.bidmachine.core.g.G(obtain.getGpu().g(), new Executable() { // from class: io.bidmachine.b3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                Device.Builder.this.setGpuvendor((String) obj);
            }
        });
    }

    private void f(@NonNull android.content.Context context, @NonNull final Context.Device.Builder builder, @NonNull TargetingParams targetingParams, @NonNull TargetingParams targetingParams2, @NonNull lp.d dVar, @Nullable ConnectionType connectionType) {
        DeviceType deviceType;
        DeviceInfo obtain = DeviceInfo.obtain(context);
        if (obtain.isTablet) {
            deviceType = DeviceType.DEVICE_TYPE_TABLET;
        } else {
            deviceType = DeviceType.DEVICE_TYPE_PHONE_DEVICE;
        }
        builder.setType(deviceType);
        builder.setOs(OS.OS_ANDROID);
        builder.setOsv(fr.c.h());
        builder.setPxratio(obtain.screenDensity);
        builder.setPpi(obtain.screenDpi);
        Point D = io.bidmachine.core.g.D(context);
        builder.setW(D.x);
        builder.setH(D.y);
        builder.setIfa(AdvertisingDataManager.a(context, !dVar.b()));
        builder.setLmt(AdvertisingDataManager.b());
        if (dVar.a()) {
            if (connectionType == null) {
                connectionType = fr.c.b(context);
            }
            builder.setContype(connectionType);
            builder.setMake(fr.c.f());
            io.bidmachine.core.g.G(UserAgentManager.getUserAgent(context), new Executable() { // from class: io.bidmachine.y2
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Context.Device.Builder.this.setUa((String) obj);
                }
            });
            io.bidmachine.core.g.H(obtain.model, new Executable() { // from class: io.bidmachine.j3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Context.Device.Builder.this.setModel((String) obj);
                }
            });
            io.bidmachine.core.g.H(obtain.getHWV(), new Executable() { // from class: io.bidmachine.n3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Context.Device.Builder.this.setHwv((String) obj);
                }
            });
            io.bidmachine.core.g.G(Locale.getDefault().getLanguage(), new Executable() { // from class: io.bidmachine.o3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Context.Device.Builder.this.setLang((String) obj);
                }
            });
            io.bidmachine.core.g.G(obtain.phoneMCCMNC, new Executable() { // from class: io.bidmachine.p3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Context.Device.Builder.this.setMccmnc((String) obj);
                }
            });
            io.bidmachine.core.g.G(obtain.phoneCarrier, new Executable() { // from class: io.bidmachine.q3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Context.Device.Builder.this.setCarrier((String) obj);
                }
            });
            this.f58696a.a(context, builder, connectionType);
        }
        if (dVar.c()) {
            builder.setGeo(fr.e.b(context, targetingParams.getDeviceLocation(), targetingParams2.getDeviceLocation(), true));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull android.content.Context context, @NonNull Context.Builder builder, @NonNull TargetingParams targetingParams, @NonNull TargetingParams targetingParams2, @NonNull lp.d dVar, @Nullable ConnectionType connectionType) {
        Context.Device.Builder d10 = d(context, targetingParams, targetingParams2, dVar, connectionType);
        if (d10 != null) {
            Device.Builder c10 = c(context, dVar);
            if (c10 != null) {
                d10.addExtProto(Any.pack(c10.build()));
            }
            builder.setDevice(d10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull android.content.Context context, @NonNull final RequestTokenPayload.Builder builder, @NonNull lp.d dVar) {
        Device.Builder c10 = c(context, dVar);
        Objects.requireNonNull(builder);
        io.bidmachine.core.g.H(c10, new Executable() { // from class: io.bidmachine.m3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                RequestTokenPayload.Builder.this.setDeviceData((Device.Builder) obj);
            }
        });
    }
}
