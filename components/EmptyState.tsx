export default function EmptyState({ message }: { message: string }) {
  return (
    <div className="rounded-lg border border-dashed border-ink/20 px-6 py-16 text-center">
      <p className="font-display text-sm text-ink/50">{message}</p>
    </div>
  );
}
